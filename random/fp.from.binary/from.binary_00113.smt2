(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary nan)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111111100110011111101100100001))
;; x should be ff99fb21

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(NaN)

(assert (not (= y (_ NaN 8 24))))
(check-sat)
(exit)
