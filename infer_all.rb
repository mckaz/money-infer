require 'rdl'
RDL::Config.instance.number_mode = true
require 'types/core'
require './lib/money'

require './orig_types'

RDL.no_infer_meth Money::Currency, 'self.new'
RDL.no_infer_meth Money::Currency, 'inspect'
RDL.infer_file "./lib/money/currency.rb"
#RDL.no_infer_meth Money, 'as_d'
RDL.infer_file "./lib/money/money.rb"

RDL.infer_file "./lib/money/bank/base.rb"
RDL.infer_file "./lib/money/bank/single_currency.rb"
RDL.no_infer_meth Money::Bank::VariableExchange, :rates
#RDL.no_infer_meth Money::Bank::VariableExchange, :exchange
RDL.infer_file "./lib/money/bank/variable_exchange.rb"

RDL.infer_file "./lib/money/currency/heuristics.rb"
RDL.infer_file "./lib/money/currency/loader.rb"

RDL.no_infer_meth Money::LocaleBackend::I18n, :lookup
RDL.infer_all "./lib/money/locale_backend/"

RDL.infer_file "./lib/money/money/allocation.rb"
RDL.no_infer_meth Money::Arithmetic, :==
RDL.infer_file "./lib/money/money/arithmetic.rb"

#RDL.infer_file "./lib/money/money/constructors.rb" # mixin issues

RDL.no_infer_meth Money::Formatter, :initialize
RDL.infer_file "./lib/money/money/formatter.rb"
#RDL.no_infer_meth Money::FormattingRules, :translate_formatting_rules
#RDL.no_infer_meth Money::FormattingRules, :normalize_formatting_rules
#RDL.infer_file "./lib/money/money/formatting_rules.rb"

RDL.infer_file "./lib/money/money/locale_backend.rb"
RDL.infer_file "./lib/money/rates_store/memory.rb"



RDL.do_infer :files, num_times: 1
