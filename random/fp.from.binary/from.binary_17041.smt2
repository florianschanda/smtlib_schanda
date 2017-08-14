(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +0)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000000000000000000000000000))
;; x should be 0

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(+zero)

(assert (not (= y (_ +zero 8 24))))
(check-sat)
(exit)
