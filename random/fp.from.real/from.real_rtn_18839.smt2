(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00111011 #b01110110111101001011100)))
;; x should be Float32(0x1DBB7A5C [Rational(3071639, 618970019642690137449562112), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 190125256861752193559222535573586283.0 38312388521647221458958675678757729590468478054590054400.0))))
;; w should be Float32(0x1DBB7A5C [Rational(3071639, 618970019642690137449562112), 0.000000])

(assert (= x w))
(check-sat)
(exit)
