(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b00111010 #b01110111100011100000000)))
;; x should be Float32(0x1D3BC700 [Rational(48071, 19342813113834066795298816), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0x0001 [Rational(1, 16777216), 0.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x0001)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
