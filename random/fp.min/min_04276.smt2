(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAA1AD73)))
;; x should be Float32(0xCAA1AD73 [Rational(-10595699, 2), -5297849.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010001 #b10000100001011101010000)))
;; y should be Float32(0xC8C21750 [Rational(-794997, 2), -397498.500000])

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (= result (fp #b1 #b10010101 #b01000011010110101110011)))
(check-sat)
(exit)
