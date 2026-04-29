(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000000001001001011000110011010))
;; x should be 8024b19a

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x8024B19A [Rational(-1202381, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= y (fp #b1 #b00000000 #b01001001011000110011010)))
(check-sat)
(exit)
