(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RTP rounded_int)
(declare-const x Int)
(assert (= x (- 63635308870520438278316954471315139608)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xFE3F7EDB [Rational(-63635304611699379930411208874764795904), -63635304611699379930411208874764795904.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFE3F7EDB)))
(assert (= y z))
