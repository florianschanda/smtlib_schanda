(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x800F27CA)))
;; x should be Float32(0x800F27CA [Rational(-496613, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11000100 #b00010111011011100101100)))
;; y should be Float32(0x620BB72C [Rational(644324087713385938944), 644324087713385938944.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11011100 #b00111011010010011101111)))
;; z should be Float32(0xEE1DA4EF [Rational(-12197134755489345204912128000), -12197134755489345204912128000.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b1 #b11011100 #b00111011010010011101111)))
(check-sat)
(exit)
