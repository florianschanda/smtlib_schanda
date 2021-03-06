(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b1 #b11011010 #b01011010110001100011010)))
;; y should be Float32(0xED2D631A [Rational(-3353794571047693736778661888), -3353794571047693736778661888.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (_ +zero 8 24)))
(check-sat)
(exit)
