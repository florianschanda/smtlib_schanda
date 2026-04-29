(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10000100101101001100000)))
;; x should be Float32(0x80425A60 [Rational(-135891, 22300745198530623141535718272648361505980416), -0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
