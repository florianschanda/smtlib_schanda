(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x76079EA2)))
;; x should be Float32(0x76079EA2 [Rational(687673370685455082618448070574080), 687673370685455082618448070574080.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 95626157940263995503515194825981.0)))
;; w should be Float32(0x7496DF19 [Rational(95626158059802407640692691042304), 95626158059802407640692691042304.000000])

(assert (distinct x w))
(check-sat)
(exit)
