(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00800000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 8920297365195285830691232068183859190621157591.0 758855036025675418327914807352937072907190171504742000488989222554259486408284569600.0))))
;; w should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(assert (= x w))
(check-sat)
(exit)
