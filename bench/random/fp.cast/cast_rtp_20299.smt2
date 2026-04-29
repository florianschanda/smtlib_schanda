(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7D44BC5C)))
;; x should be Float32(0x7D44BC5C [Rational(16344169060308224664811807516997451776), 16344169060308224664811807516997451776.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0x407A8978B80000000000000000000000 [Rational(16344169060308224664811807516997451776), 16344169060308224664811807516997451776.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000001111010 #b1000100101111000101110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
