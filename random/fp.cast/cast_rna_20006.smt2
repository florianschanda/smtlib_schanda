(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6553E5DF)))
;; x should be Float32(0x6553E5DF [Rational(62541231320115317833728), 62541231320115317833728.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(+oo)

(declare-const z Float16)
(assert (= z (fp #b0 #b11111 #b0000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
