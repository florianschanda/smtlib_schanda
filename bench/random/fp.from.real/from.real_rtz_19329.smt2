(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0732C038)))
;; x should be Float32(0x0732C038 [Rational(1464327, 10889035741470030830827987437816582766592), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 3189021864300612434169472112137696197791392980493.0 23714219875802356822747337729779283528349692859523187515280913204820608950258892800.0))))
;; w should be Float32(0x0732C038 [Rational(1464327, 10889035741470030830827987437816582766592), 0.000000])

(assert (= x w))
(check-sat)
(exit)
