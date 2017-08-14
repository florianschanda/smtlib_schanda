(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7E44C78E)))
;; x should be Float32(0x7E44C78E [Rational(65391208587713915081105988273536237568), 65391208587713915081105988273536237568.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 1634780260529417813794808449729524584612.0 25.0))))
;; w should be Float32(0x7E44C78E [Rational(65391208587713915081105988273536237568), 65391208587713915081105988273536237568.000000])

(assert (= x w))
(check-sat)
(exit)
