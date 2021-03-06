(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01000111010101111101010)))
;; x should be Float32(0x8023ABEA [Rational(-1168885, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8028880D)))
;; y should be Float32(0x8028880D [Rational(-2656269, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x804C33F7)))
(check-sat)
(exit)
