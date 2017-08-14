(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10001011 #b00111001110011110111100)))
;; x should be Float32(0xC59CE7BC [Rational(-2570735, 512), -5020.966797])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 51414705337.0 10240000.0)))))
;; w should be Float32(0xC59CE7BD [Rational(-10282941, 2048), -5020.967285])

(assert (not (distinct x w)))
(check-sat)
(exit)
