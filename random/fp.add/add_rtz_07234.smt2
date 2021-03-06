(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001100 #b00100010111011000000000)))
;; x should be Float32(0x46117600 [Rational(18619, 2), 9309.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x1411B142)))
;; y should be Float32(0x1411B142 [Rational(4774049, 649037107316853453566312041152512), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x46117600)))
(check-sat)
(exit)
