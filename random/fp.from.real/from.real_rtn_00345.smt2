(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x696B0548)))
;; x should be Float32(0x696B0548 [Rational(17757656725464094460608512), 17757656725464094460608512.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 17757657878385599067455490.0)))
;; w should be Float32(0x696B0549 [Rational(17757657878385599067455488), 17757657878385599067455488.000000])

(assert (distinct x w))
(check-sat)
(exit)
