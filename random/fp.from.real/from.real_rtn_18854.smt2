(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x24260173)))
;; x should be Float32(0x24260173 [Rational(10879347, 302231454903657293676544), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 19177882371.0 755578637259143234191360000.0))))
;; w should be Float32(0x23EA1AE1 [Rational(15342305, 604462909807314587353088), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
