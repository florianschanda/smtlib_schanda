(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x03FDD1A8)))
;; x should be Float32(0x03FDD1A8 [Rational(2079285, 1393796574908163946345982392040522594123776), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
