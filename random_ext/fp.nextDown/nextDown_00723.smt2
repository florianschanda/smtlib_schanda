(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.nextDown x)))
(assert (not (= result (fp #b1 #b00000000 #b00000000000000000000001))))
(check-sat)
(exit)
