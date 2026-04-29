(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 1.0 8920298079412249256614287309059344602392166400.0)))))
;; w should be Float32(-zero)

(assert (not (= x w)))
(check-sat)
(exit)
