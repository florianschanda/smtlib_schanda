(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA20139A)))
;; x should be Float32(0xCA20139A [Rational(-5245389, 2), -2622694.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC144027340000000 [Rational(-5245389, 2), -2622694.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010100 #b0100000000100111001101000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
