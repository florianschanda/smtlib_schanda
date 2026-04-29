(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +inf)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01111111100000000000000000000000))
;; x should be 7f800000

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(+oo)

(assert (= y (_ +oo 8 24)))
(check-sat)
(exit)
