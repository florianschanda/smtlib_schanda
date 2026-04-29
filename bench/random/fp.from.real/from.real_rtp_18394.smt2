(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b11100101 #b01111100100111111010010)))
;; x should be Float32(0x72BE4FD2 [Rational(7539027033954114737664648282112), 7539027033954114737664648282112.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 6629417301451719157072988150930.0)))
;; w should be Float32(0x72A7599B [Rational(6629417344629142178380212338688), 6629417344629142178380212338688.000000])

(assert (distinct x w))
(check-sat)
(exit)
