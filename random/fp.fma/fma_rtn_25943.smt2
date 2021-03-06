(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b01011001 #b11001011000111101001110)))
;; y should be Float32(0xACE58F4E [Rational(-7522215, 1152921504606846976), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11100001 #b10100111011001011111000)))
;; z should be Float32(0x70D3B2F8 [Rational(524141576120663721328315990016), 524141576120663721328315990016.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b11100001 #b10100111011001011111000)))
(check-sat)
(exit)
