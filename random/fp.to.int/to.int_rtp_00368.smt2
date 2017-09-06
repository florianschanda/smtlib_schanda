(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11000100101001100001011)))
;; x should be Float32(0x0062530B [Rational(6443787, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 1

(declare-const z Int)
(assert (= z 1))
(assert (= y z))
