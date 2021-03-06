(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b11111110 #b10100001111001100100110)))
;; y should be Float32(0x7F50F326 [Rational(277741921991451403441200889141861023744), 277741921991451403441200889141861023744.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (= result ((_ to_fp 8 24) #x7F50F326)))
(check-sat)
(exit)
