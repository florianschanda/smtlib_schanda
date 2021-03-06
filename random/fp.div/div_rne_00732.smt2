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
(assert (= y (fp #b0 #b11000100 #b11001011010110101101000)))
;; y should be Float32(0x6265AD68 [Rational(1059199907511406690304), 1059199907511406690304.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
