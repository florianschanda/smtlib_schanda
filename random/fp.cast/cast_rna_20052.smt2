(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x003C66D0)))
;; x should be Float32(0x003C66D0 [Rational(247405, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x37FE336800000000 [Rational(247405, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x37FE336800000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
