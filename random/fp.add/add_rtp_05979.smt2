(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b10111101 #b01101001010110101110100)))
;; y should be Float32(0xDEB4AD74 [Rational(-6509594820573396992), -6509594820573396992.000000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
