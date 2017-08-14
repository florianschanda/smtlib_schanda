(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x451663C9)))
;; x should be Float32(0x451663C9 [Rational(9855945, 4096), 2406.236572])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x40A2CC7920000000 [Rational(9855945, 4096), 2406.236572])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x40A2CC7920000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
