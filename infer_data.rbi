# typed: strong
class Money
  # RDL Type: () -> Number
  sig { returns(Integer) }
  def cents; end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def fractional; end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def round_to_nearest_cash_value; end

  # RDL Type: (([ is_a?: (Class) -> XXX ] and [ respond_to?: (:bank) -> XXX ] and [ respond_to?: (:currency) -> XXX ] and [ respond_to?: (:fractional) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ]), ?([ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ]), ?([ []: (:bank) -> XXX ] and [ is_a?: (Class) -> XXX ])) -> self
  sig { params(obj: T.untyped, currency: T.untyped, options: T.untyped).returns(T.self_type) }
  def initialize(obj, currency = nil, options = nil); end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def dollars; end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def amount; end

  # RDL Type: () -> String
  sig { returns(String) }
  def currency_as_string; end

  # RDL Type: (Number) -> Money::Currency
  sig { params(val: Integer).returns(Money::Currency) }
  def currency_as_string=(val); end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def hash; end

  # RDL Type: () -> String
  sig { returns(String) }
  def symbol; end

  # RDL Type: () -> String
  sig { returns(String) }
  def inspect; end

  # RDL Type: () -> String
  sig { returns(String) }
  def to_s; end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def to_d; end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def to_i; end

  # RDL Type: () -> Number
  sig { returns(Integer) }
  def to_f; end

  # RDL Type: (([ !: () -> XXX ] and [ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ] and [ respond_to?: (:bank) -> XXX ] and [ respond_to?: (:currency) -> XXX ] and [ respond_to?: (:fractional) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> Money
  sig { params(new_currency: T.untyped).returns(Money) }
  def with_currency(new_currency); end

  # RDL Type: (?([ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ])) -> Money
  sig { params(given_currency: T.untyped).returns(Money) }
  def to_money(given_currency = nil); end

  # RDL Type: (([ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ])) {XXX} -> Money
  sig { params(other_currency: T.untyped).returns(Money) }
  def exchange_to(other_currency); end

  # RDL Type: () -> Money
  sig { returns(Money) }
  def as_us_dollar; end

  # RDL Type: () -> Money
  sig { returns(Money) }
  def as_ca_dollar; end

  # RDL Type: () -> Money
  sig { returns(Money) }
  def as_euro; end

  # RDL Type: (([ count: () -> XXX ] and [ dup: () -> XXX ] and [ empty?: () -> XXX ] and [ inject: (Number, :+) -> XXX ] and [ is_a?: (Class) -> XXX ] and [ pop: () -> XXX ])) -> Array<u>
  sig { params(parts: T.untyped).returns(T::Array[T.untyped]) }
  def allocate(parts); end

  # RDL Type: (?Number, ?Number) -> Money
  sig { params(rounding_mode: Integer, rounding_precision: Integer).returns(Money) }
  def round(rounding_mode = nil, rounding_precision = nil); end

  # RDL Type: (*XXX) -> String
  sig { params(rules: T.untyped).returns(String) }
  def format(*rules); end

  # RDL Type: () -> String
  sig { returns(String) }
  def thousands_separator; end

  # RDL Type: () -> String
  sig { returns(String) }
  def decimal_mark; end

  # RDL Type: (?([ []: (:bank) -> XXX ] and [ []: (:currency) -> XXX ] and [ []: (:fractional) -> XXX ])) -> Money
  sig { params(options: T.untyped).returns(Money) }
  def dup_with(options = nil); end

  # RDL Type: (([ is_a?: (Class) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> Number
  sig { params(num: T.untyped).returns(Integer) }
  def as_d(num); end

  # RDL Type: ((Number and [ -: ((Number or XXX or XXX)) -> XXX ] and [ -@: () -> XXX ] and [ /: (XXX) -> XXX ] and [ <: (Number) -> XXX ] and [ <=>: (Number) -> XXX ] and [ ==: (Number) -> (false or true) ] and [ >: (Number) -> XXX ] and [ abs: () -> XXX ] and [ divmod: (XXX) -> XXX ] and [ hash: () -> XXX ] and [ is_a?: (Class) -> XXX ] and [ respond_to?: (:bank) -> XXX ] and [ respond_to?: (:currency) -> XXX ] and [ respond_to?: (:fractional) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ round: (Number, XXX) -> XXX ] and [ to_s: () -> String ])) -> Number
  sig { params(value: T.untyped).returns(Integer) }
  def return_value(value); end

  # RDL Type: () -> XXX
  sig { returns(T.untyped) }
  def locale_backend; end

  class Currency
    # RDL Type: ([ to_sym: () -> XXX ]) -> self
    sig { params(id: T.untyped).returns(T.self_type) }
    def initialize(id); end

    # RDL Type: (([ id: () -> XXX ] and [ priority: () -> XXX ])) -> Number
    sig { params(other_currency: T.untyped).returns(Integer) }
    def <=>(other_currency); end

    # RDL Type: (([ id: () -> XXX ] and [ is_a?: (Class) -> XXX ] and [ to_s: () -> String ])) -> (false or true)
    sig { params(other_currency: T.untyped).returns(T.any(FalseClass, TrueClass)) }
    def ==(other_currency); end

    # RDL Type: (([ id: () -> XXX ] and [ is_a?: (Class) -> XXX ] and [ to_s: () -> String ])) -> (false or true)
    sig { params(other_currency: T.untyped).returns(T.any(FalseClass, TrueClass)) }
    def compare_ids(other_currency); end

    # RDL Type: () -> Number
    sig { returns(Integer) }
    def hash; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_str; end

    # RDL Type: () -> Symbol
    sig { returns(Symbol) }
    def to_sym; end

    # RDL Type: () -> Money::Currency
    sig { returns(Money::Currency) }
    def to_currency; end

    # RDL Type: () -> String
    sig { returns(String) }
    def code; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def symbol_first?; end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def iso?; end

    # RDL Type: () -> Number
    sig { returns(Integer) }
    def exponent; end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def initialize_data!; end

    class MissingAttributeError
      # RDL Type: (XXX, Number, XXX) -> self
      sig { params(method: T.untyped, currency: Integer, attribute: T.untyped).returns(T.self_type) }
      def initialize(method, currency, attribute); end
    end

    module Heuristics
      # RDL Type: (Number) -> XXX
      sig { params(str: Integer).returns(T.untyped) }
      def analyze(str); end
    end
  end

  module Bank
    class Base
      # RDL Type: () {XXX} -> self
      sig { returns(T.self_type) }
      def initialize; end

      # RDL Type: () -> String
      sig { returns(String) }
      def setup; end

      # RDL Type: (Number, Number) -> Money
      sig { params(from: Integer, to_currency: Integer).returns(Money) }
      def exchange_with(from, to_currency); end

      # RDL Type: (Number, Number) -> (false or true)
      sig { params(currency1: Integer, currency2: Integer).returns(T.any(FalseClass, TrueClass)) }
      def same_currency?(currency1, currency2); end
    end

    class SingleCurrency
      # RDL Type: ([ currency: () -> XXX ], Number) -> Money
      sig { params(from: T.untyped, to_currency: Integer).returns(Money) }
      def exchange_with(from, to_currency); end
    end

    class VariableExchange
      # RDL Type: (?Money::RatesStore::Memory) {XXX} -> self
      sig { params(st: Money::RatesStore::Memory).returns(T.self_type) }
      def initialize(st = nil); end

      # RDL Type: () -> Money::RatesStore::Memory
      sig { returns(Money::RatesStore::Memory) }
      def store; end

      # RDL Type: () -> [[[s]Money::RatesStore::Memory, XXX, XXX], XXX]
      sig { returns(T::Array[T::Array[Class]]) }
      def marshal_dump; end

      # RDL Type: ([ []: (Number) -> XXX ]) -> String
      sig { params(arr: T.untyped).returns(String) }
      def marshal_load(arr); end

      # RDL Type: ((Money and [ dup_with: ({ fractional: XXX, currency: XXX, bank: Money::Bank::VariableExchange }) -> XXX ] and [ fractional: () -> XXX ]), ([ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ])) {XXX} -> Money
      sig { params(from: T.untyped, to_currency: T.untyped).returns(Money) }
      def exchange_with(from, to_currency); end

      # RDL Type: (([ currency: () -> XXX ] and [ fractional: () -> XXX ]), XXX) -> [XXX, Money]
      sig { params(from: T.untyped, to_currency: T.untyped).returns(T::Array[T.untyped]) }
      def calculate_fractional(from, to_currency); end

      # RDL Type: ([ *: (XXX) -> XXX ], Number) {((Array<(Money or XXX)> and [ respond_to?: (:bank) -> XXX ] and [ respond_to?: (:currency) -> XXX ] and [ respond_to?: (:fractional) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> XXX} -> Array<(Money or XXX)>
      sig { params(fractional: T.untyped, rate: Integer).returns(T::Array[T.untyped]) }
      def exchange(fractional, rate); end

      # RDL Type: (Number, Number, Number) -> Number
      sig { params(from: Integer, to: Integer, rate: Integer).returns(Integer) }
      def add_rate(from, to, rate); end

      # RDL Type: (Number, Number, Number, ?Hash<:bank, XXX>) -> Number
      sig do
        params(
          from: Integer,
          to: Integer,
          rate: Integer,
          opts: T::Hash[Symbol, T.untyped]
        ).returns(Integer)
      end
      def set_rate(from, to, rate, opts = nil); end

      # RDL Type: (Number, ([ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ]), ?Hash<:bank, XXX>) -> Number
      sig { params(from: Integer, to: T.untyped, opts: T::Hash[Symbol, T.untyped]).returns(Integer) }
      def get_rate(from, to, opts = nil); end

      # RDL Type: (Number, ?((Pathname or [ to_str: () -> String ]) and [ nil?: () -> XXX ]), ?Hash<:bank, XXX>) -> XXX
      sig { params(format: Integer, file: T.untyped, opts: T::Hash[Symbol, T.untyped]).returns(T.untyped) }
      def export_rates(format, file = nil, opts = nil); end

      # RDL Type: (Number, String, ?Hash<:bank, XXX>) -> Money::Bank::VariableExchange
      sig { params(format: Integer, s: String, opts: T::Hash[Symbol, T.untyped]).returns(Money::Bank::VariableExchange) }
      def import_rates(format, s, opts = nil); end
    end
  end

  module LocaleBackend
    class Currency
      # RDL Type: (Number, ([ public_send: (XXX) -> XXX ] and [ respond_to?: (XXX) -> XXX ])) -> Money
      sig { params(key: Integer, currency: T.untyped).returns(Money) }
      def lookup(key, currency); end
    end

    class I18n
      # RDL Type: () -> self
      sig { returns(T.self_type) }
      def initialize; end
    end

    class Legacy
      # RDL Type: () -> self
      sig { returns(T.self_type) }
      def initialize; end

      # RDL Type: (Number, [ public_send: (XXX) -> XXX ]) -> String
      sig { params(key: Integer, currency: T.untyped).returns(String) }
      def lookup(key, currency); end

      # RDL Type: () -> Money::LocaleBackend::I18n
      sig { returns(Money::LocaleBackend::I18n) }
      def i18n_backend; end
    end
  end

  module Arithmetic
    # RDL Type: (([ currency: () -> XXX ] and [ fractional: () -> XXX ] and [ is_a?: (Class) -> XXX ])) -> (false or true)
    sig { params(other_money: T.untyped).returns(T.any(FalseClass, TrueClass)) }
    def eql?(other_money); end

    # RDL Type: (([ exchange_to: (XXX) -> XXX ] and [ fractional: () -> XXX ] and [ is_a?: (Class) -> XXX ] and [ respond_to?: (:zero?) -> XXX ] and [ zero?: () -> XXX ])) -> Number
    sig { params(other: T.untyped).returns(Integer) }
    def <=>(other); end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def positive?; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def negative?; end

    # RDL Type: ((Number and [ value: () -> XXX ])) -> Money
    sig { params(value: T.untyped).returns(Money) }
    def *(value); end

    # RDL Type: (([ exchange_to: (XXX) -> XXX ] and [ is_a?: (Module) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> (Money or Number)
    sig { params(value: T.untyped).returns(T.any(Money, Integer)) }
    def /(value); end

    # RDL Type: (([ exchange_to: (XXX) -> XXX ] and [ is_a?: (Module) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> (Money or Number)
    sig { params(value: T.untyped).returns(T.any(Money, Integer)) }
    def div(value); end

    # RDL Type: ((Number and [ exchange_to: (XXX) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> [Money, Money]
    sig { params(val: T.untyped).returns(T::Array[Money]) }
    def divmod(val); end

    # RDL Type: ([ exchange_to: (XXX) -> XXX ]) -> [XXX, Money]
    sig { params(val: T.untyped).returns(T::Array[T.untyped]) }
    def divmod_money(val); end

    # RDL Type: (Number) -> [Money, Money]
    sig { params(val: Integer).returns(T::Array[Money]) }
    def divmod_other(val); end

    # RDL Type: ((Number and [ exchange_to: (XXX) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> Money
    sig { params(val: T.untyped).returns(Money) }
    def modulo(val); end

    # RDL Type: ((Number and [ exchange_to: (XXX) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> Money
    sig { params(val: T.untyped).returns(Money) }
    def %(val); end

    # RDL Type: ((Number and [ currency: () -> XXX ] and [ exchange_to: (XXX) -> XXX ] and [ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ] and [ respond_to?: (:bank) -> XXX ] and [ respond_to?: (:currency) -> XXX ] and [ respond_to?: (:fractional) -> XXX ] and [ respond_to?: (:to_d) -> XXX ] and [ to_s: () -> String ])) -> Money
    sig { params(val: T.untyped).returns(Money) }
    def remainder(val); end

    # RDL Type: () -> Money
    sig { returns(Money) }
    def abs; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def zero?; end

    # RDL Type: () -> Money::Arithmetic
    sig { returns(Money::Arithmetic) }
    def nonzero?; end

    # RDL Type: (XXX) -> [Money::Arithmetic, XXX]
    sig { params(other: T.untyped).returns(T::Array[T.untyped]) }
    def coerce(other); end
  end

  class Formatter
    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def thousands_separator; end

    # RDL Type: () -> String
    sig { returns(String) }
    def decimal_mark; end

    # RDL Type: () -> String
    sig { returns(String) }
    def format_number; end

    # RDL Type: (String) -> String
    sig { params(formatted_number: String).returns(String) }
    def append_sign(formatted_number); end

    # RDL Type: (String) -> String
    sig { params(formatted_number: String).returns(String) }
    def append_currency_symbol(formatted_number); end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def show_free_text?; end

    # RDL Type: (String, XXX) -> String
    sig { params(string: String, class_name: T.untyped).returns(String) }
    def html_wrap(string, class_name); end

    # RDL Type: () -> String
    sig { returns(String) }
    def free_text; end

    # RDL Type: ([ gsub: (XXX, String) -> XXX ]) -> String
    sig { params(value: T.untyped).returns(String) }
    def format_whole_part(value); end

    # RDL Type: () -> Array<String>
    sig { returns(T::Array[String]) }
    def extract_whole_and_decimal_parts; end

    # RDL Type: ((String and [ ljust: (XXX, String) -> XXX ] and [ nil?: () -> XXX ] and [ to_i: () -> Number ])) -> String
    sig { params(value: T.untyped).returns(String) }
    def format_decimal_part(value); end

    # RDL Type: (XXX) -> String
    sig { params(key: T.untyped).returns(String) }
    def lookup(key); end

    # RDL Type: () -> Regexp
    sig { returns(Regexp) }
    def regexp_format; end

    # RDL Type: (([ []: (:disambiguate) -> XXX ] and [ []: (:html) -> XXX ] and [ []: (:html_wrap) -> XXX ] and [ []: (:symbol) -> XXX ] and [ has_key?: (:symbol) -> XXX ])) -> String
    sig { params(rules: T.untyped).returns(String) }
    def symbol_value_from(rules); end
  end

  module RatesStore
    class Memory
      # RDL Type: (?Hash<:bank, XXX>, ?Hash<XXX, XXX>) -> self
      sig { params(opts: T::Hash[Symbol, T.untyped], rates: T::Hash[T.untyped, T.untyped]).returns(T.self_type) }
      def initialize(opts = nil, rates = nil); end

      # RDL Type: (XXX, XXX, Number) -> XXX
      sig { params(currency_iso_from: T.untyped, currency_iso_to: T.untyped, rate: Integer).returns(T.untyped) }
      def add_rate(currency_iso_from, currency_iso_to, rate); end

      # RDL Type: (Number, Number) -> XXX
      sig { params(currency_iso_from: Integer, currency_iso_to: Integer).returns(T.untyped) }
      def get_rate(currency_iso_from, currency_iso_to); end

      # RDL Type: () -> [[s]Money::RatesStore::Memory, XXX, XXX]
      sig { returns(T::Array[Class]) }
      def marshal_dump; end

      # RDL Type: () {() -> String} -> Array<(Class or XXX or XXX)>
      sig { returns(T::Array[T.untyped]) }
      def transaction; end

      # RDL Type: () {(XXX, XXX, XXX) -> XXX} -> Enumerator<%any>
      sig { returns(T::Enumerator[T.nilable(BasicObject)]) }
      def each_rate; end

      # RDL Type: (XXX, XXX) -> String
      sig { params(currency_iso_from: T.untyped, currency_iso_to: T.untyped).returns(String) }
      def rate_key_for(currency_iso_from, currency_iso_to); end
    end
  end
end

class [s]Money
  # RDL Type: () -> XXX
  sig { returns(T.untyped) }
  def default_currency; end

  # RDL Type: ((String and [ call: () -> XXX ])) -> String
  sig { params(currency: T.untyped).returns(String) }
  def default_currency=(currency); end

  # RDL Type: () -> XXX
  sig { returns(T.untyped) }
  def default_bank; end

  # RDL Type: (XXX) -> (Money::LocaleBackend::Currency or Money::LocaleBackend::I18n or Money::LocaleBackend::Legacy)
  sig { params(value: T.untyped).returns(T.any(Money::LocaleBackend::Currency, Money::LocaleBackend::I18n, Money::LocaleBackend::Legacy)) }
  def locale_backend=(value); end

  # RDL Type: (Number) -> Number
  sig { params(new_rounding_mode: Integer).returns(Integer) }
  def rounding_mode=(new_rounding_mode); end

  # RDL Type: ((false or true)) -> (false or true)
  sig { params(value: T.any(FalseClass, TrueClass)).returns(T.any(FalseClass, TrueClass)) }
  def use_i18n=(value); end

  # RDL Type: () -> XXX
  sig { returns(T.untyped) }
  def setup_defaults; end

  # RDL Type: ([ setup_defaults: () -> XXX ]) -> XXX
  sig { params(base: T.untyped).returns(T.untyped) }
  def inherited(base); end

  # RDL Type: (?Number) {() -> XXX} -> Number
  sig { params(mode: Integer).returns(Integer) }
  def rounding_mode(mode = nil); end

  # RDL Type: (Number) {() -> XXX} -> Number
  sig { params(mode: Integer).returns(Integer) }
  def with_rounding_mode(mode); end

  # RDL Type: (Number, Number, Number) -> Number
  sig { params(from_currency: Integer, to_currency: Integer, rate: Integer).returns(Integer) }
  def add_rate(from_currency, to_currency, rate); end

  # RDL Type: () -> String
  sig { returns(String) }
  def disallow_currency_conversion!; end

  # RDL Type: (Number, ?([ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ] and [ subunit_to_unit: () -> XXX ]), ?Hash<:bank, XXX>) -> Money
  sig { params(amount: Integer, currency: T.untyped, options: T::Hash[Symbol, T.untyped]).returns(Money) }
  def from_amount(amount, currency = nil, options = nil); end

  # RDL Type: () -> XXX
  sig { returns(T.untyped) }
  def infinite_precision; end

  # RDL Type: ((false or true)) -> XXX
  sig { params(value: T.any(FalseClass, TrueClass)).returns(T.untyped) }
  def infinite_precision=(value); end

  class Currency
    # RDL Type: () -> Hash<String, XXX>
    sig { returns(T::Hash[String, T.untyped]) }
    def _instances; end

    # RDL Type: ([ to_s: () -> String ]) -> Money
    sig { params(id: T.untyped).returns(Money) }
    def find(id); end

    # RDL Type: (([ empty?: () -> XXX ] and [ to_s: () -> String ])) -> Money
    sig { params(num: T.untyped).returns(Money) }
    def find_by_iso_numeric(num); end

    # RDL Type: (([ is_a?: (Class) -> XXX ] and [ nil?: () -> XXX ])) -> Money::Currency
    sig { params(object: T.untyped).returns(Money::Currency) }
    def wrap(object); end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def table; end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def all; end

    # RDL Type: () -> Hash<String, XXX>
    sig { returns(T::Hash[String, T.untyped]) }
    def stringified_keys; end

    # RDL Type: ([ fetch: (:iso_code) -> XXX ]) -> Array<u>
    sig { params(curr: T.untyped).returns(T::Array[T.untyped]) }
    def register(curr); end

    # RDL Type: ([ downcase: () -> XXX ], [ fetch: (:iso_code) -> XXX ]) -> Array<u>
    sig { params(parent_iso_code: T.untyped, curr: T.untyped).returns(T::Array[T.untyped]) }
    def inherit(parent_iso_code, curr); end

    # RDL Type: (([ fetch: (:iso_code) -> XXX ] and [ is_a?: (Class) -> XXX ])) -> (false or true)
    sig { params(curr: T.untyped).returns(T.any(FalseClass, TrueClass)) }
    def unregister(curr); end

    # RDL Type: () {(XXX) -> XXX} -> XXX
    sig { returns(T.untyped) }
    def each; end

    # RDL Type: () -> Array<u>
    sig { returns(T::Array[T.untyped]) }
    def reset!; end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def stringify_keys; end

    class Loader
      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def load_currencies; end

      # RDL Type: (XXX) -> XXX
      sig { params(filename: T.untyped).returns(T.untyped) }
      def parse_currency_file(filename); end
    end
  end

  class Bank
    class Base
      # RDL Type: () -> Money::Bank::Base
      sig { returns(Money::Bank::Base) }
      def instance; end
    end
  end

  class Allocation
    # RDL Type: (Number, ([ count: () -> XXX ] and [ dup: () -> XXX ] and [ empty?: () -> XXX ] and [ inject: (Number, :+) -> XXX ] and [ is_a?: (Class) -> XXX ] and [ pop: () -> XXX ]), ?((false or true))) -> Array<Number>
    sig { params(amount: Integer, parts: T.untyped, whole_amounts: T.any(FalseClass, TrueClass)).returns(T::Array[Integer]) }
    def generate(amount, parts, whole_amounts = nil); end
  end

  class LocaleBackend
    # RDL Type: (XXX) -> (Money::LocaleBackend::Currency or Money::LocaleBackend::I18n or Money::LocaleBackend::Legacy)
    sig { params(name: T.untyped).returns(T.any(Money::LocaleBackend::Currency, Money::LocaleBackend::I18n, Money::LocaleBackend::Legacy)) }
    def find(name); end
  end
end
