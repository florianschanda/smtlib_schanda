(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB7AA7035)))
;; x should be Float32(0xB7AA7035 [Rational(-11169845, 549755813888), -0.000020])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b01001101011000000100110)))
;; y should be Float32(0x8026B026 [Rational(-1267731, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (= result ((_ to_fp 8 24) #x00000034)))
(check-sat)
(exit)
