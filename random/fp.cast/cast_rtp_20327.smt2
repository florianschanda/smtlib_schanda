(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+subnormal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10100010100111110001001)))
;; x should be Float32(0x00514F89 [Rational(5328777, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0x0001 [Rational(1, 16777216), 0.000000])

(declare-const z Float16)
(assert (= z (fp #b0 #b00000 #b0000000001)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
