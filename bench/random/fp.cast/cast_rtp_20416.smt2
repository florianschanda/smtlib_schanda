(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b11101100 #b11101100010010010000000)))
;; x should be Float32(0xF6762480 [Rational(-1248091147607520393153297042636800), -1248091147607520393153297042636800.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xC06CEC49000000000000000000000000 [Rational(-1248091147607520393153297042636800), -1248091147607520393153297042636800.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC06CEC49000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
