(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x724DFE52)))
;; x should be Float32(0x724DFE52 [Rational(4080120409959004813431232528384), 4080120409959004813431232528384.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 4080120409959004813431232528384

(declare-const z Int)
(assert (= z 4080120409959004813431232528384))
(assert (= y z))
