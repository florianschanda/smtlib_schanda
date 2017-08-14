(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10001100 #b10111011001000011101101)))
;; x should be Float32(0x465D90ED [Rational(14520557, 1024), 14180.231445])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 132888665189.0 10240000.0))))
;; w should be Float32(0x464AC5A2 [Rational(6644433, 512), 12977.408203])

(assert (distinct x w))
(check-sat)
(exit)
