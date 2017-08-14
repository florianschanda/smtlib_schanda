(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA1BADFA)))
;; x should be Float32(0xCA1BADFA [Rational(-5101309, 2), -2550654.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 1305935199.0 512.0)))))
;; w should be Float32(0xCA1BADFB [Rational(-10202619, 4), -2550654.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
