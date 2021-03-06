(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00101000010101111110110)))
;; x should be Float32(0x00142BF6 [Rational(660987, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b01110011001100110001000)))
;; y should be Float32(0x00399988 [Rational(471857, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (= result ((_ to_fp 8 24) #x3EB34E17)))
(check-sat)
(exit)
