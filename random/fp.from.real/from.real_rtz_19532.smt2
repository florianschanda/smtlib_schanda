(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB1C6FD93)))
;; x should be Float32(0xB1C6FD93 [Rational(-13041043, 2251799813685248), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 32602617109.0 5629499534213120000.0)))))
;; w should be Float32(0xB1C6FD96 [Rational(-6520523, 1125899906842624), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
