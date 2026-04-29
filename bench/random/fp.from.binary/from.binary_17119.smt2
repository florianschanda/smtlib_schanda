(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000011111001111011001001110))
;; x should be 7cf64e

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x007CF64E [Rational(4094759, 356811923176489970264571492362373784095686656), 0.000000])

(assert (= y (fp #b0 #b00000000 #b11111001111011001001110)))
(check-sat)
(exit)
