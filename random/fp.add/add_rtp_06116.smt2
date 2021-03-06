(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x11F6EF18)))
;; x should be Float32(0x11F6EF18 [Rational(2022883, 5192296858534827628530496329220096), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b01101100001001011000111)))
;; y should be Float32(0x4AB612C7 [Rational(11932359, 2), 5966179.500000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result ((_ to_fp 8 24) #x4AB612C8)))
(check-sat)
(exit)
