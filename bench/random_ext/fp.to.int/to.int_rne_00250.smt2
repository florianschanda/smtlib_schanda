(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00010101 #b01101000101011011001011)))
;; x should be Float32(0x0AB456CB [Rational(11818699, 680564733841876926926749214863536422912), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
