(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b11111010 #b10001001011110001011100)))
;; x should be Float32(0x7D44BC5C [Rational(16344169060308224664811807516997451776), 16344169060308224664811807516997451776.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x47A8978B80000000 [Rational(16344169060308224664811807516997451776), 16344169060308224664811807516997451776.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x47A8978B80000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
