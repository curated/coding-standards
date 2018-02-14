// tslint:disable no-submodule-imports
import * as Lint from 'tslint'
import { Rule as NoMagicNumbersRule } from 'tslint/lib/rules/noMagicNumbersRule'
import * as ts from 'typescript'

export class Rule extends NoMagicNumbersRule {
  public static metadata: Lint.IRuleMetadata = {
    ...NoMagicNumbersRule.metadata,
    ruleName: 'no-magic-numbers-custom',
  }

  public apply(sourceFile: ts.SourceFile): Lint.RuleFailure[] {
    if (sourceFile.fileName.endsWith('.test.ts')) {
      return []
    }
    return super.apply(sourceFile)
  }
}
