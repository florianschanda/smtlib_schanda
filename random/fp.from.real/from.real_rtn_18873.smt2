(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b11111100 #b10001001100011110001110)))
;; x should be Float32(0x7E44C78E [Rational(65391208587713915081105988273536237568), 65391208587713915081105988273536237568.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 65391213658316315994023594260349059073.0)))
;; w should be Float32(0x7E44C78F [Rational(65391213658316315994023594260349059072), 65391213658316315994023594260349059072.000000])

(assert (distinct x w))
(check-sat)
(exit)
