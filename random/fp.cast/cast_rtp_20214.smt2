(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+0) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(+zero)

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x0000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
