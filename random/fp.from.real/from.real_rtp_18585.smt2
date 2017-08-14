(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x869558E4)))
;; x should be Float32(0x869558E4 [Rational(-2446905, 43556142965880123323311949751266331066368), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 5328887457041541096503451366323166968612027536903.0 94856879503209427290989350919117134113398771438092750061123652819282435801035571200.0)))))
;; w should be Float32(0x869558E4 [Rational(-2446905, 43556142965880123323311949751266331066368), -0.000000])

(assert (= x w))
(check-sat)
(exit)
