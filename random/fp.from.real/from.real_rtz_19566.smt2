(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on low bound (exclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC59CE7BC)))
;; x should be Float32(0xC59CE7BC [Rational(-2570735, 512), -5020.966797])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 10282941.0 2048.0)))))
;; w should be Float32(0xC59CE7BD [Rational(-10282941, 2048), -5020.967285])

(assert (distinct x w))
(check-sat)
(exit)
