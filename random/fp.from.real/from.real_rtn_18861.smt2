(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10001100 #b10111011001000011101101)))
;; x should be Float32(0x465D90ED [Rational(14520557, 1024), 14180.231445])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 72602794961.0 5120000.0))))
;; w should be Float32(0x465D90EE [Rational(7260279, 512), 14180.232422])

(assert (distinct x w))
(check-sat)
(exit)
