(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b01000101 #b01110110010010010000110)))
;; x should be Float32(0xA2BB2486 [Rational(-6132291, 1208925819614629174706176), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z (_ -zero 5 11)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
