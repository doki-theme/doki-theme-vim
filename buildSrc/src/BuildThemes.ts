import {
  BaseAppDokiThemeDefinition, constructNamedColorTemplate,
  DokiThemeDefinitions,
  evaluateTemplates,
  fillInTemplateScript,
  MasterDokiThemeDefinition, resolveColor,
  StringDictionary,
  toRGBArray,
  getColorFromTemplate, walkDir, resolvePaths,
} from 'doki-build-source';

type VimDokiThemeDefinition = BaseAppDokiThemeDefinition;

const path = require('path');

const {
  repoDirectory,
  appTemplatesDirectoryPath,
} = resolvePaths(__dirname);

const fs = require('fs');

const colorDirectoryPath =
  path.resolve(repoDirectory, 'colors');

const afterDirectoryPath =
  path.resolve(repoDirectory, 'after');

const autoLoadDirectoryPath =
  path.resolve(repoDirectory, 'autoload');

function constructVimName(dokiTheme: MasterDokiThemeDefinition) {
  return getName(dokiTheme).replace(/ /g, '_').toLowerCase();
}

function buildVimColorScript(
  dokiThemeDefinition: MasterDokiThemeDefinition,
  dokiTemplateDefinitions: DokiThemeDefinitions,
  dokiThemeVimDefinition: VimDokiThemeDefinition,
  vimColorScript: string,
) {
  return evaluateTemplate(
    dokiThemeDefinition,
    dokiTemplateDefinitions,
    vimColorScript
  );
}

function buildVimSyntaxScript(
  dokiThemeDefinition: MasterDokiThemeDefinition,
  dokiTemplateDefinitions: DokiThemeDefinitions,
  dokiThemeVimDefinition: VimDokiThemeDefinition,
  vimAfterScript: FileDef[],
) {
  return vimAfterScript.map(({fileName, fileContents}) => ({
    fileName,
    fileContents: evaluateTemplate(
      dokiThemeDefinition,
      dokiTemplateDefinitions,
      fileContents
    )
  }));
}

function buildVimAfterScript(
  dokiThemeDefinition: MasterDokiThemeDefinition,
  dokiTemplateDefinitions: DokiThemeDefinitions,
  dokiThemeVimDefinition: VimDokiThemeDefinition,
  vimAfterScript: string,
) {
  return evaluateTemplate(
    dokiThemeDefinition,
    dokiTemplateDefinitions,
    vimAfterScript
  );
}

function buildVimAutoLoadScript(
  dokiThemeDefinition: MasterDokiThemeDefinition,
  dokiTemplateDefinitions: DokiThemeDefinitions,
  dokiThemeVimDefinition: VimDokiThemeDefinition,
  vimAutoLoadScript: string,
) {
  return evaluateTemplate(
    dokiThemeDefinition,
    dokiTemplateDefinitions,
    vimAutoLoadScript
  );
}

const capitalize = require('lodash/capitalize');

function evaluateTemplate(
  dokiThemeDefinition: MasterDokiThemeDefinition,
  dokiTemplateDefinitions: DokiThemeDefinitions,
  vimAutoLoadScript: string,
) {
  const namedColors = constructNamedColorTemplate(
    dokiThemeDefinition, dokiTemplateDefinitions,
  );
  const themeName = constructVimName(dokiThemeDefinition);
  const themeProperName = getName(dokiThemeDefinition).split(" ")
    .map(part => capitalize(part))
    .join('')

  try {
    return fillInTemplateScript(
      vimAutoLoadScript,
      {
        ...namedColors,
        themeName,
        themeProperName,
        editorAccentColor: dokiThemeDefinition.overrides?.editorScheme?.colors?.accentColor ||
          dokiThemeDefinition.colors.accentColor
      },
      resolveTemplateVariable
    );
  } catch (e) {
    throw Error(`Unable to evaluate ${getName(dokiThemeDefinition)}'s template for raisins: ${e.message}.`);
  }
}

type X256Color = { rgbArray: number[]; name: string; guifg: string; ctermfg: number };
const x256Colors = require('./XTerm256Colors').default;
const x256ColorsWithRGB: X256Color[] = x256Colors.map((c: { name: string; guifg: string; ctermfg: number }) => ({
  ...c,
  rgbArray: toRGBArray(c.guifg)
}))

function findClosestX256Color(hexColor: string): string {
  const themeColor = toRGBArray(hexColor);
  const closest = x256ColorsWithRGB.reduce((accum,
                                            next: X256Color) => {
    const distance = themeColor.map((number, index) => Math.abs(number - next.rgbArray[index]))
      .reduce((accum, next) => accum + next, 0)
    if (distance < accum.distance) {
      accum.distance = distance;
      accum.closest = next
    }
    return accum;
  }, {
    closest: x256ColorsWithRGB[0],
    distance: Number.MAX_VALUE
  });
  return closest.closest.ctermfg.toString();
}

function getName(dokiDefinition: MasterDokiThemeDefinition) {
  return dokiDefinition.name.replace(':', '');
}

const x256Delimiter = '$x256';

function resolveTemplateVariable(
  templateVariable: string,
  templateVariables: StringDictionary<string>,
): string {
  if (templateVariable.endsWith(x256Delimiter)) {
    const colorFromTemplate = resolveColor(getColorFromTemplate(
      templateVariables,
      templateVariable.substr(0, templateVariable.length - x256Delimiter.length)
    ), templateVariables);
    return findClosestX256Color(colorFromTemplate)
  }
  return resolveColor(getColorFromTemplate(templateVariables, templateVariable), templateVariables);
}

type FileDef = { fileName: string, fileContents: string };
type VimTemplates = {
  autoloadTemplate: string;
  colorsTemplate: string;
  afterTemplate: string;
  afterSyntaxTemplates: FileDef[]
};

type DokiThemeVim = { afterTemplate: string; path: string; autoloadTemplate: string; afterSyntaxTemplates: { fileName: string; fileContents: string }[]; definition: MasterDokiThemeDefinition; colorsTemplate: string };

function createDokiTheme(
  dokiFileDefinitionPath: string,
  dokiThemeDefinition: MasterDokiThemeDefinition,
  dokiTemplateDefinitions: DokiThemeDefinitions,
  dokiThemeVimDefinition: VimDokiThemeDefinition,
  vimTemplates: VimTemplates,
): DokiThemeVim {
  try {
    return {
      path: dokiFileDefinitionPath,
      definition: dokiThemeDefinition,
      autoloadTemplate: buildVimAutoLoadScript(
        dokiThemeDefinition,
        dokiTemplateDefinitions,
        dokiThemeVimDefinition,
        vimTemplates.autoloadTemplate,
      ),
      colorsTemplate: buildVimColorScript(
        dokiThemeDefinition,
        dokiTemplateDefinitions,
        dokiThemeVimDefinition,
        vimTemplates.colorsTemplate,
      ),
      afterTemplate: '',
      // afterTemplate: buildVimAfterScript(
      //   dokiThemeDefinition,
      //   dokiTemplateDefinitions,
      //   dokiThemeVimDefinition,
      //   vimTemplates.afterTemplate,
      // ),
      afterSyntaxTemplates: buildVimSyntaxScript(
        dokiThemeDefinition,
        dokiTemplateDefinitions,
        dokiThemeVimDefinition,
        vimTemplates.afterSyntaxTemplates,
      )
    };
  } catch (e) {
    throw new Error(`Unable to build ${getName(dokiThemeDefinition)}'s theme for reasons ${e}`);
  }
}

console.log('Preparing to generate themes.');

walkDir(path.resolve(appTemplatesDirectoryPath, 'syntax'))
  .then(vimSyntaxPaths => {
    const autoloadTemplate = fs.readFileSync(path.resolve(
      appTemplatesDirectoryPath,
      'doki-theme.v2.autoload.template.vim'
    ), {
      encoding: 'utf-8',
    });
    const colorsTemplate = fs.readFileSync(path.resolve(
      appTemplatesDirectoryPath,
      'doki-theme.v2.colors.template.vim',
    ), {
      encoding: 'utf-8'
    });
    const afterTemplate = fs.readFileSync(path.resolve(
      appTemplatesDirectoryPath,
      'doki-theme.after.plugin.template.vim',
    ), {
      encoding: 'utf-8'
    });
    return {
      autoloadTemplate,
      colorsTemplate,
      afterTemplate,
      afterSyntaxTemplates: vimSyntaxPaths.map(syntaxPath => ({
        fileName: path.basename(syntaxPath),
        fileContents: fs.readFileSync(syntaxPath, 'utf-8'),
      })),
    };
  }).then(vimTemplates => evaluateTemplates<VimDokiThemeDefinition, DokiThemeVim>(
  {
    appName: 'vim',
    currentWorkingDirectory: __dirname,
  },
  (
    dokiFileDefinitionPath,
    dokiThemeDefinition,
    _,
    dokiThemeAppDefinition,
    appTemplateDefinitions,
  ) => createDokiTheme(
    dokiFileDefinitionPath,
    dokiThemeDefinition,
    appTemplateDefinitions,
    dokiThemeAppDefinition,
    vimTemplates
  )
  )
)
  .then(dokiThemes => {
    // write things for extension
    dokiThemes.forEach(dokiTheme => {
      const vimName = constructVimName(dokiTheme.definition);
      const dokiThemeVimScriptName = `${vimName}.vim`;

      // write Vim Color Script
      fs.writeFileSync(path.resolve(colorDirectoryPath, dokiThemeVimScriptName), dokiTheme.colorsTemplate);

      // write Vim after plugin Script
      // fs.writeFileSync(path.resolve(afterDirectoryPath, 'plugin', dokiThemeVimScriptName), dokiTheme.afterTemplate);

      // write Vim Syntax Highlighting things
      dokiTheme.afterSyntaxTemplates.forEach(({
                                                fileName, fileContents
                                              }) => {
        fs.writeFileSync(path.resolve(afterDirectoryPath, 'syntax', `${vimName}_${fileName}`), fileContents);
      });

      // write Vim Auto load Script
      fs.writeFileSync(path.resolve(autoLoadDirectoryPath, dokiThemeVimScriptName), dokiTheme.autoloadTemplate);
    })
  })
  .then(() => {
    console.log('Theme Generation Complete!');
  });
