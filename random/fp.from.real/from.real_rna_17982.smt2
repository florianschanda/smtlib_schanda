(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 653.0 892029807941224925661428730905934460239216640000.0)))))
;; w should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
