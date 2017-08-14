(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2F8EB935)))
;; x should be Float32(0x2F8EB935 [Rational(9353525, 36028797018963968), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 33699625266342119194304907.0 129807421463370690713262408230502400.0))))
;; w should be Float32(0x2F8EB935 [Rational(9353525, 36028797018963968), 0.000000])

(assert (= x w))
(check-sat)
(exit)
