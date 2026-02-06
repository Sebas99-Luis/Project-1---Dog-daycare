-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION pg_database_owner;

COMMENT ON SCHEMA public IS 'standard public schema';
-- public.customers definition

-- Drop table

-- DROP TABLE public.customers;

CREATE TABLE public.customers (
	customer_id int8 NOT NULL,
	full_name text NULL,
	email text NULL,
	phone text NULL,
	country_clean text NULL,
	city_clean text NULL,
	postal_code text NULL,
	address_line1 text NULL,
	address_line2 text NULL,
	signup_date_clean date NULL,
	marketing_opt_in_clean bool NULL,
	waiver_signed_clean bool NULL,
	preferred_channel_clean text NULL,
	customer_type_clean text NULL,
	risk_flag_clean text NULL,
	language_clean text NULL,
	pets_count int4 NULL,
	primary_pet_name text NULL,
	primary_pet_breed text NULL,
	primary_pet_dob date NULL,
	vet_provider text NULL,
	vaccination_status text NULL,
	notes text NULL,
	lifetime_value float4 NULL,
	CONSTRAINT customers_pkey PRIMARY KEY (customer_id)
);


-- public.bookings definition

-- Drop table

-- DROP TABLE public.bookings;

CREATE TABLE public.bookings (
	booking_id int8 NOT NULL,
	customer_email text NULL,
	customer_id int8 NULL,
	dog_name text NULL,
	dog_breed text NULL,
	dog_weight numeric NULL,
	notes text NULL,
	booking_date_clean date NULL,
	start_time_clean time NULL,
	end_time_clean time NULL,
	is_cancelled_clean bool NULL,
	is_repeat_customer_clean bool NULL,
	has_cancel_reason bool NULL,
	service_std text NULL,
	service_code_clean text NULL,
	location_clean text NULL,
	channel_std text NULL,
	source_system_clean text NULL,
	dog_gender_std text NULL,
	temperament_clean text NULL,
	price numeric NULL,
	discount numeric NULL,
	tax_rate numeric NULL,
	CONSTRAINT bookings_pkey PRIMARY KEY (booking_id),
	CONSTRAINT bookings_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id)
);


-- public.payments definition

-- Drop table

-- DROP TABLE public.payments;

CREATE TABLE public.payments (
	payment_id int8 NOT NULL,
	booking_id int8 NULL,
	customer_email text NULL,
	paid_at_clean date NULL,
	refunded_at_clean date NULL,
	is_refunded bool NULL,
	amount_gross_clean numeric NULL,
	tax_amount_clean numeric NULL,
	fee_amount_clean numeric NULL,
	amount_net_clean numeric NULL,
	currency_clean text NULL,
	status_clean text NULL,
	payment_method_clean text NULL,
	gateway_clean text NULL,
	card_brand_clean text NULL,
	country_of_card_clean text NULL,
	CONSTRAINT payments_pkey PRIMARY KEY (payment_id),
	CONSTRAINT payments_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.bookings(booking_id)
);