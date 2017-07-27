(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +minnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000100000000000000000000000))
;; x should be 800000

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(assert (= y (fp #b0 #b00000001 #b00000000000000000000000)))
(check-sat)
(exit)
