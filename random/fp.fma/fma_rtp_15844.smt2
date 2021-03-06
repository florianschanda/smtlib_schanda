(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x971ABBF8)))
;; y should be Float32(0x971ABBF8 [Rational(-1267583, 2535301200456458802993406410752), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11110000 #b00111111110100111000010)))
;; z should be Float32(0xF81FE9C2 [Rational(-12973693315753378116040965209718784), -12973693315753378116040965209718784.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #xF81FE9C2))))
(check-sat)
(exit)
